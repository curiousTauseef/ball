/* gridedPLP.h
*
* Copyright (C) 2011 Marcel Schumann
*
* This program free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 3 of the License, or (at
* your option) any later version.
*
* This program is distributed in the hope that it will be useful, but
* WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, see <http://www.gnu.org/licenses/>.
*/

// ----------------------------------------------------
// $Maintainer: Marcel Schumann $
// $Authors: Marcel Schumann $
// ----------------------------------------------------

#ifndef BALL_SCORING_FUNCTIONS_GRIDEDPLP_H
#define BALL_SCORING_FUNCTIONS_GRIDEDPLP_H

#include <BALL/SCORING/COMMON/diffGridBasedScoring.h>
#include <BALL/MOLMEC/MMFF94/MMFF94.h>

namespace BALL
{
	/** ScoringFunction using a grid-based version of Piecewise Linear Potential */
	class BALL_EXPORT GridedPLP : public DiffGridBasedScoring
	{
		public:
			GridedPLP(AtomContainer& receptor, AtomContainer& ligand, Options& options);

			GridedPLP(AtomContainer& receptor, Vector3& hashgrid_origin, Options& options);

			void setLigand(AtomContainer* sys);

		protected:
			AtomTypes& getAtomTypes();

			void setup();

			void setAtomType(Atom* atom, const String& type_name);

			double getES();

			AtomTypes atom_types_;
	};
}

#endif // BALL_SCORING_FUNCTIONS_GRIDEDPLP_H