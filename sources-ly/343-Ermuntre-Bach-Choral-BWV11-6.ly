
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 11.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Ermuntre dich, mein schwaster Geist" }
                                  \line { \italic "old: Nun lieget alles unter dir" }
                                } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 | } %fin du repeat
        R2. |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        r4 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. |
	}

  upper = {
	\time 3/4
	\key d \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 d e |
        fis4. gis8 a4 |
        a2 gis4 |
        a2\fermata fis4 |
        g2 fis4 |
        e2. |
        e2. |
        d2.\fermata | } %fin du repeat
        e4 e fis |
        g2 g4 |
        fis4. e8 fis4 |
        e2.\fermata |
        fis4 fis fis |
        g4. a8 b4 |
        b2 ais4 |
        b2\fermata cis4 |
        d4 fis,2 |
        g2 fis4 |
        e4 e\fermata a4 |
        b4. a8 g4 |
        fis8 e e4. d8 |
        d2.\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 d d8 cis |
        d2 cis8 a |
        fis'4 e2 |
        e2 d8 cis |
        b8 cis d2 ~ |
        d8 cis16 b cis4 d ~ |
	d4 cis8 b cis4 |
        a2. | } %fin du repeat
        cis8 b cis4. dis8 |
        e4 b e ~ |
	e4 dis8 cis! dis4 |
        b2. |
        dis4 b dis! |
        e4 b b |
        g'8 fis e d e4 |
        d2 fis4 |
        fis8 e d2 |
        cis8 d e4 d4 ~ |
        d8 b cis4 d |
        d4 g8 fis fis e |
        d4 ~ d8 b cis4 |
        a2. |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key d \major
	\clef bass
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        fis4 fis8 d a'4 |
        a8 fis b4 a |
        b4 b8 cis d4 |
        cis2 a4 |
        g4 a8 g a4 ~ |
	a4 a8 g fis4 |
        b4 a4. g8 |
        fis2. | } %fin du repeat
        a8 gis a4 a |
        b8 a g2 |
        c4 b4. a8 |
        g2. |
        b4 fis8 g a b |
        g8 fis e4 e'8 d |
        cis4. b8 cis4 |
        b2 ais4 |
        b4. fis8 b8 a |
        g8 fis e a4 gis8 |
        a4 a a |
        g8 a b cis d a |
        a8 b a4 g |
        fis2. |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d8 cis b4 a |
        d4. e8 fis4 |
        d8 b e2 |
        a,2\fermata d4 |
        e4 fis4. g8 |
        a8 g fis4 b8 a |
        g8 e a4 a, |
        d2.\fermata | } %fin du repeat
        a4 a'8 g fis4 |
        e4. d8 c b |
        a8 fis b4 b |
        e,2.\fermata |
        b'8 cis dis4 b |
        e4. fis8 g fis |
        e8 d cis4 fis |
        b,2\fermata fis'4 |
        b4. a!8 g fis |
        e8 d cis4 d |
        a4 a\fermata fis4 |
        g4. a8 b cis |
        d8 g, a2 |
        d,2.\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "343." }
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

