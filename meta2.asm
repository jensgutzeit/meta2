       ADR PROGRAM
OUT1
       TST '*1'
       BF  L1
       CL  'GN1'
       OUT
L1
       BT  L2
       TST '*2'
       BF  L3
       CL  'GN2'
       OUT
L3
       BT  L2
       TST '*'
       BF  L4
       CL  'CI'
       OUT
L4
       BT  L2
       SR
       BF  L5
       CL  'CL '
       CI
       OUT
L5
L2
       R
OUTPUT
       TST '.OUT'
       BF  L6
       TST '('
       BE
L7
       CLL OUT1
       BT  L7
       SET
       BE
       TST ')'
       BE
L6
       BT  L8
       TST '.LABEL'
       BF  L9
       CL  'LB'
       OUT
       CLL OUT1
       BE
L9
L8
       BF  L10
       CL  'OUT'
       OUT
L10
L11
       R
EX3
       ID
       BF  L12
       CL  'CLL '
       CI
       OUT
L12
       BT  L13
       SR
       BF  L14
       CL  'TST '
       CI
       OUT
L14
       BT  L13
       TST '.ID'
       BF  L15
       CL  'ID'
       OUT
L15
       BT  L13
       TST '.NUMBER'
       BF  L16
       CL  'NUM'
       OUT
L16
       BT  L13
       TST '.STRING'
       BF  L17
       CL  'SR'
       OUT
L17
       BT  L13
       TST '('
       BF  L18
       CLL EX1
       BE
       TST ')'
       BE
L18
       BT  L13
       TST '.EMPTY'
       BF  L19
       CL  'SET'
       OUT
L19
       BT  L13
       TST '$'
       BF  L20
       LB
       GN1
       OUT
       CLL EX3
       BE
       CL  'BT '
       GN1
       OUT
       CL  'SET'
       OUT
L20
L13
       R
EX2
       CLL EX3
       BF  L21
       CL  'BF '
       GN1
       OUT
L21
       BT  L22
       CLL OUTPUT
       BF  L23
L23
L22
       BF  L24
L25
       CLL EX3
       BF  L26
       CL  'BE'
       OUT
L26
       BT  L27
       CLL OUTPUT
       BF  L28
L28
L27
       BT  L25
       SET
       BE
       LB
       GN1
       OUT
L24
L29
       R
EX1
       CLL EX2
       BF  L30
L31
       TST '/'
       BF  L32
       CL  'BT '
       GN1
       OUT
       CLL EX2
       BE
L32
L33
       BT  L31
       SET
       BE
       LB
       GN1
       OUT
L30
L34
       R
ST
       ID
       BF  L35
       LB
       CI
       OUT
       TST '='
       BE
       CLL EX1
       BE
       TST '.,'
       BE
       CL  'R'
       OUT
L35
L36
       R
PROGRAM
       TST '.SYNTAX'
       BF  L37
       ID
       BE
       CL  'ADR '
       CI
       OUT
L38
       CLL ST
       BT  L38
       SET
       BE
       TST '.END'
       BE
       CL  'END'
       OUT
L37
L39
       R
       END

