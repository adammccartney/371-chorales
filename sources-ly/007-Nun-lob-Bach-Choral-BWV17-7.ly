
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 17.7" }
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
        R2. |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key a \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
        \set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a4 |
        a2 gis4 |
        fis2 e4 |
        a4 b2 |
        cis2\fermata cis4 |
        cis4 b cis |
        cis2 b4 |
        a4 b2 |
        a2\fermata } %fin du repeat
\break
        a4 |
        a4 b cis |
        b2 cis4 |
        a4 gis2 |
        fis2\fermata b4 |
        b4 a gis |
        a4 fis2 |
        e2\fermata e4 |
        a2 a4 |
        b2 b4 |
        cis4. b8 cis4 |
        a2\fermata a4 |
        d2 d4 |
        cis4 b cis |
        b2\fermata b4 |
        cis2 cis4 |
        d2 d4 |
        e2. |
        a,2\fermata cis4 |
        b4 a gis |
        a4 fis2 |
        e2\fermata e4 |
        a2 gis4 |
        fis2 e4 |
        b'4 cis2 |
        b2\fermata cis4 |
        d2 cis4 |
        b4 a8 gis a b |
        cis4 b2 |
        a2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
        \set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        fis2 e4 |
        d4 cis b |
        e4 fis e |
        e2 e8 fis |
        gis2 eis4 |
        fis2 gis4 |
        a2 gis4 |
        e2 } %fin du repeat
        e4 |
        fis4 gis a |
        b4 a gis |
        fis2 eis4 |
        cis2 fis4 |
        e2 e4 |
        e2 dis4 |
        b2 cis4 |
        cis2 fis4 |
        e4 fis gis |
        a2 g4 |
        fis2 a4 |
        b2 b8 a |
        g8 ais b4 e, |
        dis2 e4 |
        e2 fis4 |
        fis2 g4 |
        g4 fis g |
        d2 e4 |
        fis2 e4 |
        e2 dis4 |
        b2 cis4 |
        cis4 dis e |
        dis2 e4 |
        fis4. gis8 a4 |
        e2 gis4 |
        a4 b a |
        gis4 a2 |
        a4 gis2 |
        e2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key a \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
        \set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        cis4 |
        cis2 cis4 |
        a2 gis4 |
        a2 gis4 |
        a2 cis4 |
        cis2 b4 |
        a2 e'4 |
        e4 fis e |
        cis2 } %fin du repeat
        cis4 |
        d2 e4 |
        eis4 fis gis |
        cis,4 d cis |
        a2 a4 |
        gis4 a b |
        cis2 b8 a |
        gis2 gis4 |
        a2 d4 |
        b2 e4 |
        e2. |
        d2 e4 |
        fis2 b,4 |
        e4 d8 cis b ais |
        b2 gis!4 |
        a2 a4 |
        b2 b4 |
        b4 a g |
        fis2 a4 |
        fis2 b4 |
        cis4 b a |
        gis2 gis4 |
        a2 b4 |
        b4 a gis |
        d'!4 a2 |
        gis2 cis4 |
        fis4 e e |
        e8 d cis4 fis |
        e2 d4 |
        cis2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
        \set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a4 |
        fis2 cis4 |
        d2 d4 |
        cis4 d e |
        a,2\fermata a'4 |
        eis2 cis4 |
        fis4 e! d |
        cis4 d e |
        a,2\fermata } %fin du repeat
        a4 |
        d2 a'4 |
        gis4 fis eis |
        fis4 b, cis |
        fis,2\fermata dis'4 |
        e2 d!4 |
        cis4 a b |
        e2\fermata cis4 |
        fis4 e fis |
        gis4 fis e |
        a2 a,4 |
        d2\fermata cis4 |
        b4 b'8 a g8 fis |
        e8 fis g4 fis |
        b,2\fermata e4 |
        a4 gis fis |
        b4 a g |
        cis,2. |
        d2\fermata a'4 |
        dis,2 e4 |
        a,4 b2 |
        e2\fermata cis4 |
        fis2 e4 |
        b2 cis4 |
        d!2 dis4 |
        e2\fermata eis4 |
        fis4 gis a |
        e4 fis d |
        e2 e4 |
        a,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "7." }
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>

    \layout {
%	ragged-last = ##f
	\context {
	\Staff
	\override VerticalAxisGroup #'staff-staff-spacing =
	#'(('basic-distance . 10)
	(minimum-distance . 12)
	(padding . 1)
	(stretchability . 10))
	 }

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

