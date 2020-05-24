
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 338" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Herr, straf mich nicht in deinem Zorn" }
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
        a4 |
        c4 b a a |
        g4 f e\fermata e4 |
        fis4 gis a c |
        b2 a4\fermata } %fin du repeat
\break
        b4 |
        b4 b b g |
        a4 b c\fermata b |
        b4 b c b |
        a4 a gis\fermata gis |
        a4 b c d |
        b2 a4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        a4 a8 g f4 f4 ~ |
	f8 e8 ~ e d cis4 e |
        d8. e16 f8 e e fis16 gis a4 |
        a4 gis e } %fin du repeat
        g4 |
        fis4 g fis4 ~ fis8 e8 ~ |
	e8 d8 ~ d e e4 e |
        fis16 g a4 gis8 a4. g8 ~ |
	g8 f16 e d4 e e |
        e4 e4 ~ e8 a16 gis a4 ~ |
	a8 gis16 fis gis4 e
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
        c4 |
        e4 e8. d16 c4 d4 ~ |
	d8 a8 a4 a a |
        a4 d8 c16 b c8 d e4 |
        f8 d b e16 d c4 } %fin du repeat
        e4 |
        dis4 e b b8 c8 ~ |
	c8 d16 c b a b8 a4 g |
        b4 e e e8. d16 |
        c4 b8 a b4 b |
        c4 b a4 ~ a8 f'8 |
        e8 b e d cis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        a4 |
        a'4 e f8 e d c |
        b8 cis d4 a\fermata c4 ~ |
	c8 d16 c b8 e c b a c |
        d8 b e4 a,\fermata } %fin du repeat
        e'4 |
        b'8 a g fis e dis e4 |
        fis4 gis a4\fermata e |
        dis4 d c8 d e4 |
        f8 e f4 e\fermata e8 d |
        c8 b a gis a4 f'8 d |
        e2 a,4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "221." }
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
      tempoWholdisPerMinute = #(ly:make-moment 78 4)
		}
	    }
	}

