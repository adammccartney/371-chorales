
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 262" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Alle Menschen müssen sterben" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        \repeat volta 2 {
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
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
        a4 d a b |
        a4. g8 fis4 fis\fermata |
        a4 a g fis |
        e4. d8 d2\fermata | } %fin du repeat
        e4 e fis8 gis a4 |
        a4. gis8 a4 a\fermata |
        b4. cis8 d4 d |
        cis4. cis8 b4 b\fermata |
        fis4 fis b a |
        a4 gis a2\fermata |
        b4 a g fis |
        e4. d8 d2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        \repeat volta 2 {
        d4 d d d |
        d4 cis d d |
        d4 d8 cis b cis d4 ~ |
	d4 cis4 d2 | } %fin du repeat
        cis4 cis d cis |
        fis4 e8 d cis4 cis |
        e8 fis g4 fis fis |
        fis4. e8 d4 d |
        d4 d d cis |
        d4 d cis2 |
        d4 d8 cis b cis d4 |
        d4 cis d2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \major
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        \repeat volta 2 {
        fis4 fis8 g a4 g8 fis |
        e8 d e4 d d |
        fis4 fis g a |
        b4 a8. g16 fis2 | } %fin du repeat
        a4 a a a |
        b4 b a a |
        g4. a8 b2 ~ |
	b4 ais4 b2 |
        a4 a g8 fis e4 |
        d8 fis e d e2 |
        g4 fis g a |
        b4 a8. g16 fis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        \repeat volta 2 {
        d4 b fis g |
        a4 a d, d\fermata |
        d'4 d e fis |
        g8 fis a a, d2\fermata | } %fin du repeat
        a4 a d fis8 e |
        d4 e a,2\fermata |
        e'2 b8 cis d e |
        fis2 b,\fermata |
        d4 d g, a |
        b2 a\fermata |
        g4 d' e fis |
        g8 e a a, d2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "153." }
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

