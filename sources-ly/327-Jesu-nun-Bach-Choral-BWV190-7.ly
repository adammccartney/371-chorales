
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 190.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Jesu, nun sei gepreiset" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat

        \repeat volta 2 {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        \repeat volta 2 {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key d \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        fis4 |
        fis4 d e fis |
        g2 e4\fermata e |
        e4 d d cis |
        d2.\fermata e4 |
        e4 e e fis |
\break
        d2 d4\fermata d |
        cis4 d e e |
        d2.\fermata } %fin du repeat

        \repeat volta 2 {
        cis4 |
        cis4 cis cis cis |
        d2 d4\fermata } %fin du repeat
\break
        \repeat volta 2 {
        fis4 |
        fis4 d e fis |
        g2 fis4\fermata fis |
        e4 fis dis dis |
        e2.\fermata } %fin du repeat
\break
        fis4 |
        fis4 d e fis |
        g2 e4\fermata e |
        e4 d d cis |
        d2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 |
        a4 fis g a |
        b2 g4 g |
        fis4 fis e a |
        a2. a4 |
        e4 gis a ais |
        b2 b4 fis |
        e4 fis g8 a16 b a8 e |
        fis2. } %fin du repeat
      
        \repeat volta 2 {
        e4 |
        a4 a a a |
        a2 a4 } %fin du repeat
      
        \repeat volta 2 {
        a4 |
        a4 fis g a |
        g4 a a b |
        g4 a fis fis |
        g2. } %fin du repeat
      
        fis4 |
        fis4 fis e dis |
        e4 fis g g |
        fis4 fis e e |
        fis2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        d4 a b c! |
        d2 c4 c |
        cis!4 d b e |
        fis2. cis4 |
        b8 cis d4 cis cis |
        d8 e fis4 fis b, |
        g4 a8 d d4 cis |
        a2. } %fin du repeat
      
        \repeat volta 2 {
        a4 |
        e'4 e fis g8 e |
        fis2 fis4 } %fin du repeat
      
        \repeat volta 2 {
        d4 |
        d4 a b c! |
        d4 a d fis |
        b,4 c b b |
        b2. } %fin du repeat
      
        cis4 |
        d4 fis b, a |
        b2 ais4 b |
        cis4 b b a |
        a2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d4 |
        d'4 c b a |
        g2 c,4\fermata b |
        ais4 b gis a |
        d,2.\fermata a''4 |
        gis4 e a fis |
        b2 b4\fermata b |
        e,4 d a' a, |
        d2.\fermata } %fin du repeat
      
        \repeat volta 2 {
        a4 |
        a'4 g fis a |
        d,2 d4\fermata } %fin du repeat
      
        \repeat volta 2 {
        d4 |
        d'4 c b a |
        b4 cis! d\fermata dis, |
        e4 a b b, |
        e2.\fermata } %fin du repeat
      
        ais4 |
        b4 a! g fis |
        e4 d cis b |
        ais4 b gis a |
        d2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "327." }
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

