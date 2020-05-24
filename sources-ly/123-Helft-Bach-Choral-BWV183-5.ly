
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 183.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Helft mir Gotts Güte preisen" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. 
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
        a4 b c d |
        b8 c8 ~ c\trill b16 c d4\fermata e4 |
        d8 c b a c4 b8 a |
        a2.\fermata } %fin du repeat
        e'4 |
        d4 c b a |
        b2.\fermata b4 |
        c4 d e e |
        d8 c b c b4\fermata b |
        c4 d e e |
        d8 c b c b4\fermata e |
        d8 c b a c4 b8 a |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e8 d |
        e8 f e d c e a fis |
        d8 g e a gis4 b8 gis |
        e4. a8 a8 b gis4 |
        e2. } %fin du repeat
        a8 g |
        fis8 gis a4 a8 gis! a d |
        gis,2. gis4 |
        a4 g! g c8 b |
        a8 g fis4 g b |
        a4 g g g |
        fis8 gis a4 gis! c8 b |
        a4 gis8 a a fis gis4 |
        e2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        c8 b |
        c8 d c b a c b a |
        b8 e c f e d\fermata b4 |
        a8 b c d e f b, d |
        c2. } %fin du repeat
        c4 |
        c8 b e f b, e e a, |
        e'2. e4 |
        e4 d c8 d e4 |
        a,4 d d e |
        e4 b c b |
        a8 e' d a e'4 a, |
        d8 e f d e4 d8 cis |
        cis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        a4 |
        a'4 gis a fis |
        g!8 a ~ a g16 a b4\fermata gis |
        a4 f e8 d e4 |
        a,2.\fermata } %fin du repeat
        a4 |
        b4 c8 d e4 f |
        e2.\fermata e4 |
        a8 b c b c b a g |
        fis8 e d4 g\fermata gis |
        a8 g! f g f e d c |
        d8 e f d e4\fermata c |
        f8 e d f e d e4 |
        a,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "123." }
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

