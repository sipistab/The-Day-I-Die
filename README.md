I have been journaling for the past 5 years. It all started with Nathaniel Branden's Sentence Completion exercises. The writing sessions gradually became longer and more frequent. During self-reflection, I noticed that I tend to invest effort in projects I find exciting, only to lose motivation when they become functional (partly done). To break this pattern, I introduced a new section into my journaling and created scripts that run automatically in Windows Task Scheduler every day. The passing of time is inevitable, and each of us has a limited lifespan. Reminding myself of this daily was the quickest way to break the cycle. The concept of mortality helped me persist with my projects and motivated me to make my work presentable to others. I strive to live fully, giving my all to what is worth doing. So, I do not expect to live long. I set up the scripts to count down to my 50th birthday and output the value into a text file. At the time, I was overly optimistic.

I have an AutoHotkey script that reads the contents of the text files and inputs them into the current field:

Autohotkey
___
; The day I die
::thedayidie:: 
; Read the content of the file
FileRead, content, C:\Users\Admin\Downloads\thedayidie.txt
Send, %content%
return

; The week I die
::theweekidie:: 
FileRead, content, C:\Users\Admin\Downloads\theweekidie.txt
Send, %content%
return

; The month I die
::themonthidie:: 
FileRead, content, C:\Users\Admin\Downloads\themonthidie.txt
Send, %content%
return
___

_Please note that your file path may vary._

Now, I simply type the shorthand at the top of my journal entry, and beneath the date, I note approximately how many days, weeks, and months I have left to live. Nihilism gets a bad rep, you just have to be positive about it. Nothing better than some mental self-flagellation. Feel the whip of mortality scarring your mind.

Enjoy! 😊️
