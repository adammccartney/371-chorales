
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 33.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Allein zu dir, Herr Jesu Christ" }
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
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        c4 |
        g4 a8 b c d e4 |
        d4 c2 b4 |
        c2\fermata r4 e4 |
        d4 c b8 a g4 |
        a4 b8 c d4 c8 b |
        c4 b a\fermata } %fin du repeat
        e'4 |
        f8 e d4 e8 d c4 |
        d4 e a,\fermata e' |
        f8 e d4 e8 d c4 |
        d4 e a,\fermata c |
        b4 a g a |
        f8 e f4 e\fermata a |
        g4 c2 b4 |
        c4\fermata g a b |
        c8 d e4 d c |
        b4 b a\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        e8 d c d e f g4 |
        g4. fis8 g4 g |
        g2 r4 g4 |
        g8 f e4 e4 e |
        e8 fis gis a b4 a |
        a4 gis e } %fin du repeat
        a4 |
        a4 a gis e |
        a4 g! f e |
        a4 a8 g g4 g |
        a4 b e, g |
        g8 fis e4 e8 g f e |
        d8 cis d4 cis c |
        d4 g8 f e4 d |
        e4 e fis gis |
        a4 e a2 ~ |
	a4 gis4 e
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a8 b |
        c8 b a4 g g8 a |
        b8 a16 b c8 d e4 d |
        e2 r4 c4 |
        b4. a8 g a b4 |
        c4 d8 e f e e4 |
        f8 d b c16 d c4 } %fin du repeat
        c4 |
        c4 b8 a b4 c8 b |
        a4 a d b |
        c4 d c c |
        c4 b c e |
        d4 e b cis |
        a4 a a a |
        b8 a g2 g4 |
        g4 e' d d |
        e8 d c b a b c d16 e |
        f4 e8 d cis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 |
        e4 f e8 d c4 |
        g'4 a g g, |
        c2\fermata r4 c4 |
        g'4 a e4. d8 |
        c8 c' b a gis4 a |
        d,4 e a,\fermata } %fin du repeat
        a'4 |
        d,8 e f4 e a8 g |
        f8 e d cis d4\fermata gis, |
        a4 b c8 d e4 |
        fis4 gis a\fermata e8 fis! |
        g4 cis,8 dis e4 a, |
        d8 f e d a'4\fermata f ~ |
	f4 e8 d e f g4 |
        c,4\fermata c ~ c8 d c b |
        a8 b a g f4. e8 |
        d4 e a\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "13." }
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

