
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 259 " }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ach, was soll ich Sünder machen" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key e \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 e g g |
        a4 a b b4\fermata |
        b4 d c b |
        a4. a8 g2\fermata |
        a4 a b g |
        fis4 fis8 fis e2\fermata |
        e'4 e d d |
        cis4 cis b b4\fermata |
        d4 d c! b |
        a4. a8 g2\fermata |
        a4 a b g |
        fis4. fis8 e2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 b e e |
        e4 a8 fis g4 g |
        g4 g g8 fis g4 |
        g4 fis d2 |
        fis4 e dis8 fis b, e16 dis! |
        e4 dis b2 |
        g'4 g fis fis |
        g4 fis fis fis |
        fis4 g g8 a ~ a8 g |
        g4 fis d2 |
        e4 fis fis4. e8 |
        e4 dis b2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 g b b |
        c4 d d d |
        d4 d8 b c d d4 |
        e8 c a d16 c b2 |
        d4 a4 ~ a8 g16 fis g8 c ~ |
	c8 a8 fis b16 a g2 |
        b4 b b b |
        b4. ais8 d4 d |
        d8 c b4 e8 d8 ~ d e8 ~ |
	e8 c8 a d16 c b2 |
        cis4 d8 c b4 b8 c ~ |
	c8 a8 fis b16 a gis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e8 fis8 g fis e d c b |
        a8 g fis d g4 g'\fermata |
        g,8 a b e a, d g, b |
        c8 a d4 g,2\fermata |
        fis'8 e d c b dis e c |
        a8 fis b4 e,2\fermata |
        e8 fis g a b cis d b |
        e8 cis fis4 b,2\fermata |
        b'8 a g fis e fis g e |
        c8 a d4 g,2\fermata |
        g'4 fis8 e dis4 e8 c |
        a8 fis b4 e,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "39." }
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

