⍝ [DEPRECATED] without tally
⍝    F←{(≢⍵)=+/⍵=⌽⍵}

⍝ [DEPRECATED] doesn't allow uppercase, and requires explicit alphabet
⍝ dyalog reads right-to-left, so assign on the right
⍝    ALLOW←'abcdefghijklmnopqrstuvwxyz'
⍝    F←{⍵≡⌽⍵⊣⍵←(⍵∊ALLOW)/⍵}

AL_LOW←⎕UCS96+⍳26
AL_HIGH←⎕UCS64+⍳26
AL←AL_LOW,AL_HIGH
LOW←{(∊2/⊂AL_LOW)[AL⍳⍵]}
F←{⍵≡⌽⍵⊣⍵←LOW (⍵∊AL)/⍵}

⍝ tests
F 'lol'
F 'h e y'
F 'BB oBb'

