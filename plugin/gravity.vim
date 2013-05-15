python << EOF
import vim

def gravityStep(b):
    maxlen = max(map(len,b))
    for row in range(0,len(b)):
        b[row] = b[row] + (maxlen-len(b[row]))*" "
    done = True
    for row in range(len(b)-2,-1,-1):
        for col in range(0,len(b[0])):
            if (b[row][col] != " ") & (b[row+1][col] == " "):
                b[row+1] = b[row+1][:col]+b[row][col]+b[row+1][col+1:]
                b[row] = b[row][:col]+" "+b[row][col+1:]
                done = False
    return done

def bufferGravity(b):
    while not gravityStep(b):
        True
EOF

command Gravity :python bufferGravity(vim.current.buffer)
