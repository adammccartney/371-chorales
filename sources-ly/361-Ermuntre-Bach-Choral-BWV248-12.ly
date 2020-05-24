
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 248.12" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Ermuntre dich, mein schwaster Geist" }
                                  \line { "Copie du 9 (mais octaviation) " \italic " old: Du Lebenfürst Herr Jesu Christ" }
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
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key g \major
	\clef treble
	\partial 4
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        g4 a b8 cis d4 |
        d4 cis d\fermata b4 |
        c!4 b a b |
        a2 g4\fermata } %fin du repeat
        a4 |
        a4 b c c |
        b8 a b4 a\fermata b |
        b4 b c8 d e4 |
        e4 dis e\fermata fis |
        g4 b, c b |
        a2 a4\fermata d4 |
        e4 d c b8 c |
        a2 g4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        e4 fis d8 e fis4 |
        e8 fis g4 fis fis |
        e4 d8 e fis4 g |
        g4 fis d } %fin du repeat
        fis8 g |
        a4. gis8 a8 gis a4 |
        a4 gis e e8 dis |
        e4 e e8 fis g fis |
        fis8 g a4 g a |
        g8 a b4 b8 a a g |
        g2 fis4 g8 fis |
        e4 fis g8 a d,4 |
        e4 d d
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \major
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
        b8 c8 ~ c d b a a4 |
        a4 a a b8 a |
        g8 a b c d4 d |
        d4. c8 b4 } %fin du repeat
        d8 e |
        fis8 e d4 e fis |
        b,4 e8 d c4 g!8 a |
        b8 c d e c4 cis |
        b4 b b d8 c |
        d4 g g,8 a b4 |
        e8 d e cis d4 d |
        d8 c c b b a g4 |
        g8 fis16 e fis4 b4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        g8 fis |
        e4 d g fis8 g |
        a4 a, d\fermata dis |
        e8 fis g c, c' b a g |
        d'4 d, g\fermata } %fin du repeat
        d4 |
        d'8 c b4 a dis, |
        e4 e a,\fermata e'8 fis |
        g4 gis a ais |
        b4 b, e\fermata d'8 c |
        b8 a g fis e fis g e |
        cis8 b cis a d4\fermata b4 |
        c4 d e8 fis g4 |
        c,4 d g,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "361." }
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

