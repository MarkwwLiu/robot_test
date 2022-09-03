*** Settings ***
Resource    .././init.robot

Documentation       A simple for loop example.

# 指定跑某一個tags $ python3 -m robot -d report --include Gary MarkTest/Base.robot
# 排除某個tags 跑其他用例 $ python3 -m robot -d report --exclude Ron MarkTest/Base.robot
# 指定多個符合tag跑    $ python3 -m robot -d report --include RonANDMarkANDGary MarkTest/Base.robot
# 指定其中多個tag跑    $ python3 -m robot -d report --include RonORMarkORGary MarkTest/Base.robot


*** Variables ***
@{ROBOTS}=      Bender    Johnny5    Terminator    Robocop    TEST

${STRING}    Mark
${NUMBER}    ${0718}
@{LIST}    Ron    Gary    Mark    Una    Lucy    Joan    Sam    Sorott
&{DICTIONARY}    string=${STRING}    number=${NUMBER}    list=@{LIST}

*** Comments ***



*** Test Cases ***

# ❯ $ python3 -m robot -d reports -t "markTest" tests/Login.robot

我是測試用例的標題-1111111
    [Documentation]    fffff
    [Tags]      Ron
    [Setup]    NONE   # 可過濾自動起瀏覽器
    Log    ${STRING}  
    Should Be Equal    ${STRING}    ${DICTIONARY}
    ${STRING}    Set Variable    Ron Ron
    Log    ${STRING}  
    [Teardown]    NONE  # 可過濾自動關閉瀏覽器

我是測試用例的標題-1111
    [Documentation]    ddddd
    [Tags]      Ron
    [Setup]    NONE   # 可過濾自動起瀏覽器
    Log    ${STRING}  

    ${STRING}    Set Variable    Ron Ron
    Log    ${STRING}  
    [Teardown]    NONE  # 可過濾自動關閉瀏覽器

markTest
    [Tags]    Ron
    Log    ${LIST}

    FOR    ${item}    IN    @{LIST}
        Log    ${item}  
    END

    FOR    ${item}    IN    one    two    three
        Log    ${item}   
    END

字典跑迴圈
    [Tags]    Mark    Ron
    Log    ${DICTIONARY}

    FOR    ${key_value_tuple}    IN    &{DICTIONARY}
        Log    ${key_value_tuple}
    END

    FOR    ${key}    IN    @{DICTIONARY}
        Log    ${key}=${DICTIONARY}[${key}]
    END

    Log    ${DICTIONARY}[string]
    Log    ${DICTIONARY}[number]
    Log    ${DICTIONARY}[list]


印出 0 - 9
    [Tags]    Gary
    FOR    ${index}    IN RANGE    10
        Log    ${index}    # 0-9
    END

*** Comments ***


印出 1 - 9
    FOR    ${index}    IN RANGE    1    10
        Log    ${index}    # 0-9
    END

印出 偶數
    FOR    ${index}    IN RANGE    0    10    2
        Log    ${index}    # 0, 2, 4, 6, 8
    END

印到2的時候跳出
    FOR    ${i}    IN RANGE    5
        IF    ${i} == 2    BREAK
        Log    ${i}    # 0, 1
    END


跑一個列表印出每一個列表的參數
    FOR    ${robot}    IN    @{ROBOTS}
        Log    ${robot}
    END

跑一個列表印出每一個列表的參數,但是有符合條件後面就不會繼續跑
    FOR    ${robot}    IN    @{ROBOTS}        
        IF    $robot == 'Terminator'    BREAK 
        Log    ${robot}
    END

雙迴圈
    @{alphabets}=    Create List    a    b    c
    Log    ${alphabets}    # ['a', 'b', 'c']
    @{numbers}=    Create List    ${1}    ${2}    ${3}
    Log    ${numbers}    # [1, 2, 3]
    FOR    ${alphabet}    IN    @{alphabets}
        FOR    ${number}    IN    @{numbers}
            Log    ${alphabet}${number}
            # a1, a2, a3, b1, b2, b3, c1, c2, c3
        END
    END

WHILE: Loop while condition evaluates to True or the default loop limit is hit
    ${x}=    Set Variable    ${0}
    WHILE    ${x} < 3
        Log    Executed as long as the condition is True.
        ${x}=    Evaluate    ${x} + 1
    END

結構以IF結束END
    IF    1 == 1
        Log    This is the IF construct body. It can span many lines!
    END

計算字串長度比較
    IF    len("cat") == 3
        Log    This line IS executed.
    END

結構以IF ELSE結束END
    IF    1 == 2
        Log    This line is NOT executed.
    ELSE
        Log    This line IS executed.
    END

IF / ELSE IF / ELSE 結構
    IF    1 == 1
        Log    This line IS executed. ELSE IF and ELSE are ignored.
    ELSE IF    2 == 2
        Log    This line is NOT executed since the IF expression evaluated to True.
    ELSE
        Log    This line is NOT executed since the IF expression evaluated to True.
    END

如何使用多個條件：and/or

    IF    1 == 1 and 2 == 2
        Log    This line IS executed since both expressions evaluate to True.
    END
    IF    1 == 2 or 2 == 2
    Log    This line IS executed since one of the expressions evaluates to True.
    END

    IF    (1 == 1 and 2 == 2) and 3 == 3
    Log    This line IS executed since the expressions evaluate to True.
    END

    IF    (1 == 2 or 3 == 4) or 3 == 3
    Log    This line IS executed since one of the expressions evaluates to True.
    END

比較字串
    ${string_condition}=    Set Variable    cat
    IF   "${string_condition}" == "cat"
        Log    This is cat
    END
