
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 280" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line {"Es woll uns Gott genädig sein (1)"}
                     \line { \italic "old: Christ, unser Herr, zum Jordan kam"}
                 } }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key d \dorian % c \major % a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d8 e |
        f4 g a g |
        c4 b8 a a4\fermata g! |
        c4 b a g |
        f4 e d\fermata } %fin du repeat
\break
        d4 |
        g4 g e a |
        a4 gis a\fermata a |
        d4 d e8 d c4 |
        d8 c b4 a\fermata b |
        c4 b a g |
        a8 g f4 e\fermata d8 e |
        f4 g a8 g f4 |
        g8 f e4 d\fermata d' |
        d4 d e d |
        c4 b a4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 |
        d4 e f e |
        e4 e e e |
        e4 e f8 e d4 |
        a8 d4 cis8 a4 } %fin du repeat
        a4 |
        d4 c!8 b c d e4 |
        e4 e e e |
        a4 g g a8 g |
        f4 b,8 c16 d c4 e |
        e4 d c8 d e4 |
        a,4 d cis a |
        d4 e e8 cis d4 |
        e8 d cis4 a a' |
        g4 g g a8 d, |
        e4. d8 cis4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \dorian % c \major % a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        f8 g |
        a8 b c4 c c8 b |
        a4 gis c b |
        a4 b8 cis d4 d,8 e |
        f8 g a4 f } %fin du repeat
        f8 e |
        d4 g g c |
        b8 a b4 c c |
        c4 b c8 b a4 |
        b8 a gis4 e gis! |
        a8 g! f g a b cis d |
        e4 a, a f8 e |
        d8 f bes4 a bes ~ |
	bes4 e,8 f16 g f4 d |
        b'!8 c d b c b a4 |
        a4 gis e4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d4 |
        d4 c f c |
        c8 d e4 a,\fermata e' |
        a4 g f b,8 cis |
        d4 a d\fermata } %fin du repeat
        d8 c! |
        b8 a g4 c b8 a |
        e'4 e, a\fermata a'8 g! |
        fis4 g c, f8 e |
        d4 e a,\fermata e' |
        a4 d,8 e f4 e8 d |
        cis4 d a\fermata d8 c |
        bes8 a g4 f bes8 a |
        g4 a d,\fermata fis' |
        g8 a b g c,4 f! |
        e8 d e4 a,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "66." }
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

