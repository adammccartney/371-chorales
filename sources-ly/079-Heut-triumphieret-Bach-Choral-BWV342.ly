
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 342" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Heut' triumphieret Gottes Sohn" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R2. |
        R2. |
        R2. |
        \tempo 4 = 60 r2. \tempo 4 = 118 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 50 r2 \tempo 4 = 118 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 60 r2. \tempo 4 = 118 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 60 r2. \tempo 4 = 118 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 50 r2 \tempo 4 = 118 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 60 r2. 
	}

  upper = {
	\time 3/4
	\key a \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        c4 c d |
        e2 d4 |
        c2 b4 |
        c2.\fermata |
        c4 c c |
        d4 c b |
        a2 gis4 |
        a2\fermata b4 |
        c2 d4 |
        e4. f8 g4 |
        f4 e d |
        e2.\fermata |
        e4 e e |
        d2 d4 |
        e4 d c |
        b2.\fermata |
        b4 b cis |
        d4 c! b |
        a2 gis4 |
        a2\fermata b4 |
        c2 d4 |
        e2 e4 |
        e4 dis2 |
        e2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e8 f g4 g |
        g2 f4 |
        e4 d2 |
        e2. |
        f4 g f |
        f4 e d |
        e4 f e |
        e2 e4 |
        e2 g4 |
        g2 g4 |
        c4 b a |
        gis2. |
        a4 g!8 f g a |
        b4 g a |
        b2 a4 |
        gis2. |
        g!8 a g f e4 |
        d4 e f |
        e4 f e |
        e2 gis4 |
        a2 g!4 |
        g2 fis4 |
        fis4 gis a |
        gis2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key a \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c4 c b |
        c4 b a |
        g4 a g |
        g2. |
        a4 g a |
        gis4 a b |
        c4 b2 |
        c2 gis4 |
        a8 b c4 b |
        c2 d4 |
        c4 e f |
        b,2. |
        c4 c c |
        d8 c d e f4 |
        e2 e4 |
        e2. |
        e4 e a, |
        a2 gis4 |
        a4 d b |
        c2 e4 |
        e4 f d |
        c2 c4 |
        b2 b4 |
        b2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 e g |
        c,2 d4 |
        e4 f g |
        c,2.\fermata |
        f4 e f |
        b,4 c d |
        c4 d e |
        a,2\fermata e'4 |
        a2 g4 |
        c2 b4 |
        a4 g f |
        e2.\fermata |
        a4 e c |
        g'4 b a |
        gis2 a4 |
        e2.\fermata |
        e8 d e f g4 |
        f4 e d |
        c4 d e |
        a,2\fermata e'4 |
        a2 b4 |
        c4 b a |
        b2 b,4 |
        e2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "79." }
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
      tempoWholesPerMinute = #(ly:make-moment 118 4)
		}
	    }
	}

