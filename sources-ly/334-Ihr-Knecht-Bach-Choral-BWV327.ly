
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 327" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Ihr Knecht des Herren allzugleich" }
                     \line { \italic "old: Für deinen Thron tret' ich hiermit" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key d \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        d4 |
        d2 cis4 |
        b2 a4 |
        d4 e2 |
        fis2\fermata fis4 |
        fis2 fis4 |
        e2 fis4 |
        g4 fis2 |
        e2\fermata d4 |
        e2 fis4 |
        e2 d4 |
        b4 cis2 |
        d2\fermata a'4 |
        fis2 d4 |
        e2 g4 |
        fis4 e2 |
        d2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        b2 a4 |
        g2 fis4 |
        fis4 b a |
        a2 cis4 |
        b2 b4 |
        b4 a a |
        a4 d a |
        a2 b4 |
        a2 a4 |
        b4 a8 g fis4 |
        b4 b ais |
        b2 a4 |
        a2 b4 |
        a2 a4 |
        a4 g2 |
        fis2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key d \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 |
        fis2 fis4 |
        d2 d4 |
        d2 cis4 |
        d2 cis4 |
        d2 d4 |
        d4 cis d |
        e4 a, d |
        cis2 fis4 |
        e2 d4 |
        d4 cis d |
        d4 g fis |
        fis2 e4 |
        fis2 fis4 |
        e2 cis4 |
        a4 b cis |
        a2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d4 |
        b4 d fis |
        g4 b d |
        b4 g a |
        d,2\fermata ais'4 |
        b2 a!4 |
        gis4 a fis |
        cis4 d fis |
        a2\fermata b4 |
        cis2 d4 |
        g,4 a b |
        g4 e fis |
        b,2\fermata cis'4 |
        d4 cis b |
        cis4 b a |
        d4 g,4 a |
        d,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "334." }
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

