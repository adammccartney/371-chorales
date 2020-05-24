
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 177.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ich ruf zu dir, Herr Jesu Christ" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
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
	\repeat volta 2 {
        b4 |
        g4 fis8 g16 a g8 fis e fis |
        g8. a16 a4 b\fermata b8 c |
        d8 c b a g4 a8 b |
        c2 b4\fermata } %fin du repeat
\break
        d4 |
        e4 d8 c b a g a |
        b8 c a4 g\fermata b |
        b4 b a g8 fis |
\break
        fis2 e\fermata |
        g4 fis e2 |
        d4\fermata d g g |
        a4 a b\fermata c |
        b4 a g8 fis e fis |
        g4 fis e\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis4 |
        e4 dis e8 dis e dis |
        e4. fis8 dis4 e |
        d!4 d e d |
        c8 e4 dis8 e4 } %fin du repeat
        d8 g16 f |
        e4 fis! fis g |
        g8 a fis4 d d8 e |
        fis a g fis e dis e4 |
        e4 dis e2 |
        e4. d!8 ~ d cis16 b cis4 |
        a4 a d c8 d |
        e8 c8 e8 d e4 e |
        e8 dis e fis e dis e4 |
        e4 dis b4
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
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b4 |
        b8 c4 b16 a b2 ~  |
        b8 b a16 g fis e fis4 g |
        a4 g8 f e4 fis8 gis |
        a8 g! fis4 g } %fin du repeat
        g4 |
        g8 c b a b4. c8 |
        d8 e d c b4 g |
        fis e a8 b c4 |
        b8 a4 g8 g2 |
        a4 a b a8 g |
        fis4 fis g8 f e g8 |
        c8 e8 a,4 gis a8 g |
        fis4 e8 b' b4. c8 |
        b4. a8 gis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        dis4 |
        e2 ~ e8 fis g fis |
        e8 d c4 b\fermata e, |
        fis4 g c8 d c b |
        a2 e4\fermata } %fin du repeat
        b'4 |
        c4 d dis e |
        d!8 c d4 g,\fermata g' |
        dis4 e8 d c4 b8 a |
        b2 c\fermata |
        cis4 d g, a |
        d,4\fermata d'8 c b4 c8 b |
        a8 g f4 e\fermata a |
        b4 cis8 dis e fis g a |
        b4 b, e,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "71." }
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

