
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 319" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gott hat das Evangelium" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        b4 |
        b4 b8 c d c b4 |
        a4 b8 a g4\fermata b4 |
        b4 b8 c d c b4 |
        a4 b g\fermata b |
        c4 b a g8 a |
        b4 fis e\fermata b' |
        c4 b a g8 a |
        b4 fis e\fermata b' |
        b4 a g8 fis e fis |
        g4 g a a |
        b2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        fis4 g a4. g8 ~ |
	g8 fis16 e fis4 d g |
        a4 g fis g ~ |
	g4 fis4 e g4 ~ | 
        g8 a8 ~ a g8 ~ g fis e4 ~ |
	e8 dis16 cis dis4 e gis |
        a4 d,8 e fis4 e |
        e4 dis e g |
        fis8 e fis dis b2 |
        e4 e e8 g fis e |
        fis2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 |
        b4 e d! d |
        e4 d8 c b4 d8 e |
        fis4 e d! e |
        e4 b b e ~ |
	e8 d8 d4 e8 b b4 |
        b4. a8 g4 d' |
        e8 fis g4 d8 c b4 ~ |
	b4. a8 g4 e' |
        b4 fis e8 fis g a |
        b4 b c8 e dis e |
        dis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e4 |
        dis4 e fis g |
        c,4 d g,\fermata g' |
        dis4 e b e8 d |
        cis4 dis e\fermata e4 ~ |
	e8 fis8 g4 cis,8 dis e fis |
        g8 a b b, c4\fermata b4 |
        a4 b8 c d4 e |
        g,8 a b4 e,\fermata e' |
        dis8 cis dis b e2 ~ |
        e8 fis g e c b c4 |
        b2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "181." }
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>

    \layout {
%	ragged-last = ##f
	   }

         } % fin de score

  \score {
    \unfoldRepeats { << \guidemidi \upper \lower >> }
    \midi {
    \context {
     \Staff
      \remove "Staff_performer"
               }

     \context {
      \Voice
       \consists "Staff_performer"
                }

     \context { 
      \Score
      tempoWholesPerMinute = #(ly:make-moment 78 4)
		}
	    }
	}

