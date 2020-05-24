
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 340" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Herzlich lieb hab ich dich, o Herr" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        c4 |
        b4 a g8 f e4 |
        a4 a g\fermata c |
        b4 a g8 f e4 |
        a4 a g\fermata g4 |
        a4 b c8 d e4 |
        d2 c4\fermata } %fin du repeat
\break
        c4 |
        c4 d c a8 b |
        c4. d8 b4\fermata b |
        c4 d c8 b a b |
\break
        c4. d8 b4\fermata e |
        f8 e d4 e8 d c4 |
        c4 b c\fermata b |
\break
        c4 b a8 b g4 |
        g8 a fis4 g4\fermata e' |
        d4 c b\fermata e |
\break
        f8 e d4 e8 d c b |
        a8 d b4 c\fermata c4 |
        c4 c d c |
        c4 b c\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        g8 f e4 e e8 d |
        c4 f e e8 f |
        g4 f8 e d4 c8 d |
        e8 dis e fis fis8 e\fermata e4 |
        d8 c f4 e a |
        a4 g8 f e4 } %fin du repeat
        g4 |
        a4 b a e |
        e4 d d g |
        g4 g g f |
        e4. fis8 gis4 a8 g |
        f4 g g8 f e4 |
        a4 g g g |
        a4 a8 g g fis fis e |
        e4 d d c |
        d8 e e dis e4 e8 d |
        c8 e gis a b4 e, |
        e8 d e4 e c'8 bes |
        a8 g f e d4 e8 g |
        g4. g8 g4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key c \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        d4 d8 c b4 c8 b |
        a8 b c4 c c8 d |
        e8 d c4 d g, |
        c8 b a c! b4 c8 b |
        a4 d c8 b c4 |
        c4 b g } %fin du repeat
        e'4 |
        e8 c f e e4. d8 |
        c8 b a4 g d' |
        e4 f e a,8 gis |
        a8 e a4 b a |
        d8 c b4 b c |
        d4 e8 f e4 d |
        d4 d8 e e d b c |
        c4 a8 b16 c b4 g8 a |
        b4 a8 fis gis!4 c8 b |
        a8 c d f b,4 c |
        c8 a b gis a4 g |
        c8 bes a4 a8 g g e' |
        d8 c d4 e4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        c4 |
        g'4 a e8 d c4 |
        f8 g a b c4\fermata a4 |
        e4 f b, c8 b |
        a8 b cis dis e4\fermata c |
        f4 e8 d a'4. g8 |
        f8 e g4 c,\fermata } %fin du repeat
        c'8 b |
        a4. gis8 a b c b |
        a8 g fis d g4\fermata g8 f |
        e8 d c b c4 d |
        a8 b c a e'4\fermata cis |
        d4 g8 f e4 a8 g |
        f8 d g4 c,\fermata g' |
        g8 fis g e c8 d e c |
        a4 d g,\fermata c |
        g'8 gis a4 e\fermata a, |
        a'4 b8 a gis4 a8 g |
        fis4 gis8 e a4\fermata e4 |
        f!8 g a4 b,! e8 c |
        g'4 g, c4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "277." }
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

