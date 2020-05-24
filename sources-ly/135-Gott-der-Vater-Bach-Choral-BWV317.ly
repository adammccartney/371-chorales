
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 317" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gott der Vater wohn uns bei" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        \repeat volta 2 {
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key d \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 a b cis |
        d4 d cis\fermata b |
        d4 a fis g |
\break
        fis4 e d2\fermata | } %fin du repeat
        \repeat volta 2 {
        d4 e fis4. e8 |
        d4 e fis\fermata d' |
\break
        cis4 d e4. d8 |
        cis4 b a\fermata a4 |
        a4 d cis a |
\break
        b8 a g4 fis\fermata e |
        fis4 g a4. g8 |
        fis4 e d2\fermata | } %fin du repeat
\break
        d4 e fis4. e8 |
        d4 e fis\fermata a |
\break
        a4 a fis g |
        fis4 e d2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis4 fis g g |
        a4 a8 gis a4 g |
        fis4 e e8 d4 cis8 |
        d4. cis8 a2 | } %fin du repeat

        \repeat volta 2 {
        a4 a8 e'8 ~ e d4 cis8 |
        b4 b cis d8 e |
        fis4 fis8 b ~ b8 a16 gis a4 ~ |
	a4 gis4 e e |
        fis4 fis e d8 e |
        fis4. e8 ~ e8 dis8 e4 ~ |
	e8 d8 ~ d cis8 ~ cis d8 ~ d e8 ~ |
	e8 d4 cis8 a2 | } %fin du repeat

        a4 a8 e'8 ~ e d8 ~ d8 cis8 |
        d4 b8 e d4 d ~ |
	d8 e8 fis e d4 ~ d8 e8 ~ |
	e8 d4 cis8 a2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 d d e |
        fis8 e d4 e e |
        d4 e8 a, a4 g |
        a4. a16 g fis2 | } %fin du repeat

        \repeat volta 2 {
        fis4 a a a8 g |
        fis4 b ais b ~ |
	b8 a!8 fis'4 e cis8 d |
        e4 ~ e8 d8 cis4 cis |
        d4 a a8 g fis4 |
        b4 b b b8 a |
        a4 g fis8 a b4 |
        a4 ~ a8 g fis2 | } %fin du repeat

        a4 a a a |
        a8 fis g a a4 fis8 g |
        a8 b cis4 d8 cis b4 |
        a4 ~ a8 g fis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d4 d g8 fis e4 |
        d8 cis b4 a\fermata e' |
        b4 cis d e |
        fis8 g a4 d,2\fermata | } %fin du repeat

        \repeat volta 2 {
        d4 cis d a |
        b8 a g4 fis\fermata b4 |
        fis'4 d cis fis |
        e4 e, a\fermata a'8 g! |
        fis8 e d4 a d |
        dis4 e b\fermata cis |
        d4 e fis g |
        a4 a, d2\fermata | } %fin du repeat

        fis4 cis d a'8 g |
        fis8 d4 cis8 d4\fermata d8 e8 |
        fis8 g a4 b8 a g4 |
        a4 a, d2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "135." }
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

