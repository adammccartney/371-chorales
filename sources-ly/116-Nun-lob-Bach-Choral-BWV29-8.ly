
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 29.8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun lob, mein Seel, den Herren" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 } %fin du repeat
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key d \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        d4 |
        d2 cis4 |
        b2 a4 |
        d4 e2 |
        fis2\fermata fis4 |
        fis8 e fis2 |
        fis2 e4 |
        d8 e e2 |
        d2\fermata } %fin du repeat
        d4 |
        d4 e fis |
        e2 fis8 e |
        d8 e cis2 |
        b2\fermata e4 |
        e4 d cis |
        d8 cis b2 |
        a2\fermata a4 |
        d2 d4 |
        e2 e4 |
        fis4 e fis |
        d2\fermata d4 |
        g2 g4 |
        fis8 e fis2 |
        e2\fermata e4 |
        fis2 fis4 |
        g2 g4 |
        a4. g8 fis e |
        d2\fermata fis4 |
        e4 d cis |
        d8 cis b2 |
        a2\fermata a4 |
        d2 cis4 |
        b2 a4 |
        e'4 fis2 |
        e2\fermata fis4 |
        g4 fis e |
        fis8 g e2 |
        d2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 |
        b4 a a |
        a4 g a8 g |
        fis4 b a |
        a2 a4 |
        a2 cis4 |
        fis,4 b e, |
        a4 b a8 e |
        fis2 } %fin du repeat
        a4 |
        b4 a a |
        a8 b a g fis4 |
        fis4 g8 fis e fis |
        d2 e4 |
        e2 e4 |
        a2 gis4 |
        e2 e4 |
        d8 e fis4 b |
        b4 a a |
        a2. ~ |
	a4 g4\fermata g8 a |
        b4 a8 g c b |
        a8 g c4 b8 a |
        g2 a4 |
        a4 b2 ~ |
	b4 a8 g c b |
        a8 g a2 ~ |
	a4 g4\fermata a4 |
        b2 a4 |
        a2 gis4 |
        e2 e4 |
        a8 gis a b e,4 |
        fis4 cis cis8 d |
        e4 a2 |
        a2 a4 |
        b4 a g |
        fis4 g8 fis e4 |
        fis2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key d \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis4 |
        fis2 fis8 e |
        d4 e8 d cis4 |
        d2 cis4 |
        d2 d4 |
        d2 cis4 |
        d2 cis4 |
        d2 cis4 |
        a2 } %fin du repeat
        d4 |
        g4 cis, d |
        d4 cis cis |
        b2 ais4 |
        b2 gis8 a |
        b8 gis a b cis b |
        a4 fis' e8 d |
        cis2 cis8 b |
        a4 d2 ~ |
	d4 cis8 b cis4 |
        d4 a d |
        b2 b4 |
        e2 e4 |
        e2 dis4 |
        b2 cis4 |
        d2 d4 |
        g,4 e'2 ~ |
	e4 d4. c8 |
        b2 d8 cis! |
        b4 e2 |
        d8 e fis4 e8 d |
        cis2 cis4 |
        cis4 b a |
        a4 gis a |
        a2 d4 |
        cis2 d4 |
        d2 a4 |
        d2 cis4 |
        a2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d8 cis |
        b4 fis2 |
        g8 fis e4 fis |
        b8 a g4 a |
        d,2\fermata d4 |
        d'4. cis8 b ais |
        b8 a! g fis g e |
        fis4 g a |
        d,2\fermata } %fin du repeat
        fis4 |
        g8 a g fis e d |
        a'2 ais4 |
        b4 e, fis |
        b,2\fermata cis4 |
        gis'8 e fis gis a gis |
        fis8 e d4 e |
        a,2\fermata a'8 g |
        fis4 b8 a g fis |
        g8 e a g fis e |
        d8 e d cis d fis |
        g2\fermata g8 fis |
        e4 fis8 g a b |
        c4 a b |
        e,2\fermata a4 |
        d8 cis b a g fis |
        e8 d c b a g |
        <fis fis'>8_\markup { \tiny "^ orig: divisi 5e voix" } g' fis e d4 | % !!! le fis basse est une noire dans l'original. !!!
        g2\fermata d'4 |
        gis,8 e fis gis a gis |
        fis8 e d4 e |
        a,2\fermata a'8 gis |
        fis8 e fis gis a4 |
        dis,8 cis dis eis fis e |
        d8 cis8 d4 d,4 |
        a'2\fermata d8 cis |
        b8 a b d cis e |
        d4 g, a |
        d,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "116." }
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

