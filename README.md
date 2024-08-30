# texttoalg2
Text to Algorithm 2

Text to Algorithm 2 is a SWI-Prolog algorithm that is an extension to Text to Algorithm (which prepares to breason out file.txt in the Text to Breasonings folder) that only finds algorithms for the base form of verbs, finding philosophy and algorithms in the process.  It produces an algorithm for each word, producing a pastable Shell script file1a.txt, mainly used for postgraduate Pedagogy musings.  Breasoning is thinking of the x, y and z dimensions of objects, necessary for meeting grades.

To use this algorithm, you need another window open to develop and test each specification, algorithm and result, before pasting it into texttoalg.

# Prerequisites

* Please download and install SWI-Prolog for your machine at `https://www.swi-prolog.org/build/`.

# 1. Install manually

Download <a href="http://github.com/luciangreen/texttoalg2/">this repository</a>, the <a href="https://github.com/luciangreen/listprologinterpreter">List Prolog Interpreter Repository</a>, the <a href="https://github.com/luciangreen/Text-to-Breasonings">Text to Breasonings Repository</a> and the <a href="https://github.com/luciangreen/texttoalg">Text to Algorithm Repository</a>.

# 2. Or Install from List Prolog Package Manager (LPPM)

* Download the <a href="https://github.com/luciangreen/List-Prolog-Package-Manager">LPPM Repository</a>:

```
mkdir GitHub
cd GitHub/
git clone https://github.com/luciangreen/List-Prolog-Package-Manager.git
cd List-Prolog-Package-Manager
swipl
['lppm'].
lppm_install("luciangreen","texttoalg2").
../
halt.
```

# Running

* In Shell:
`cd texttoalg` (sic)
```
swipl
['../Text-to-Breasonings/text_to_breasonings.pl'].
['../texttoalg2/find_and_convert_verbs_to_base.pl'].
```

* Enter the following to breason out verbs in Text-to-Breasonings/file.txt:
`find_and_convert_verbs_to_base.`
Note: only asks for algorithms for verbs (i.e. that have the object "right" in brdict1.txt), which are stripped of the prefixes and suffixes in texttoalg2/prefixes.txt and texttoalg2/suffixes.txt respectively.


* Before running texttobr, think of two radio buttons put on recordings, put through with prayer, nut and bolt, quantum box prayer 1, 1, 0.5 cm and 1, 1, 0.5 cm.

* Follow instructions in https://github.com/luciangreen/Text-to-Breasonings/blob/master/Instructions_for_Using_texttobr(2).pl.txt when using texttoalg, texttobr, or texttobr2 to avoid medical problems.

* Before breasoning, breason out algdict1.txt and algdict2.txt to allow breasoning multiple instances by dragging them from Finder (Mac) to empty BBEdit window for file.txt, then enter:
`cd ../Text-to-Breasonings`
```
swipl
['text_to_breasonings.pl'].
texttobr2(u,u,u,u,true,false,false,false,false,false),texttobr(u,u,u,u).
```
* Not recommended (due to idiosyncrasies of Shell, so breasoning out the dictionaries in the previous step may have to suffice): Copy and paste contents of file1a.txt into Terminal window (Mac) (one to a few lines at a time) to breason out algorithms for all instances of words.

# Authors

Lucian Green - Initial programmer - <a href="https://www.lucianacademy.com/">Lucian Academy</a>

# License

I licensed this project under the BSD3 License - see the LICENSE.md file for details
