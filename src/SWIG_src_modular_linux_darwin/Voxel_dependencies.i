/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{
#include <AIS_IndexedDataMapOfOwnerPrs.hxx>
#include <AIS_DataMapOfSelStat.hxx>
#include <AIS_Axis.hxx>
#include <AIS_PToContext.hxx>
#include <AIS_GlobalStatus.hxx>
#include <AIS_FixRelation.hxx>
#include <AIS_MapOfInteractive.hxx>
#include <AIS_TypeFilter.hxx>
#include <AIS_TypeOfAttribute.hxx>
#include <AIS_StandardDatum.hxx>
#include <AIS_SequenceOfDimension.hxx>
#include <AIS_LocalStatus.hxx>
#include <AIS_NDataMapOfTransientIteratorOfListTransient.hxx>
#include <AIS_DataMapOfILC.hxx>
#include <AIS_TypeOfPlane.hxx>
#include <AIS_TypeOfIso.hxx>
#include <AIS_EqualRadiusRelation.hxx>
#include <AIS_SequenceNodeOfSequenceOfInteractive.hxx>
#include <AIS_ClearMode.hxx>
#include <AIS_LocalContext.hxx>
#include <AIS_Relation.hxx>
#include <AIS_DataMapofIntegerListOfinteractive.hxx>
#include <AIS_DataMapNodeOfDataMapofIntegerListOfinteractive.hxx>
#include <AIS_DataMapIteratorOfDataMapOfSelStat.hxx>
#include <AIS_KindOfInteractive.hxx>
#include <AIS_StatusOfDetection.hxx>
#include <AIS_Selection.hxx>
#include <AIS_IdenticRelation.hxx>
#include <AIS_ListNodeOfListOfInteractive.hxx>
#include <AIS_InteractiveObject.hxx>
#include <AIS_TangentRelation.hxx>
#include <AIS_ConcentricRelation.hxx>
#include <AIS_DataMapIteratorOfDataMapOfIOStatus.hxx>
#include <AIS_C0RegularityFilter.hxx>
#include <AIS_MaxRadiusDimension.hxx>
#include <AIS_MinRadiusDimension.hxx>
#include <AIS_ListOfInteractive.hxx>
#include <AIS_DataMapOfTransientTransient.hxx>
#include <AIS_DimensionOwner.hxx>
#include <AIS_KindOfDimension.hxx>
#include <AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive.hxx>
#include <AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs.hxx>
#include <AIS_SymmetricRelation.hxx>
#include <AIS_NListIteratorOfListTransient.hxx>
#include <AIS_Drawer.hxx>
#include <AIS_ConnectStatus.hxx>
#include <AIS_DiameterDimension.hxx>
#include <AIS_NListTransient.hxx>
#include <AIS_EllipseRadiusDimension.hxx>
#include <AIS_KindOfSurface.hxx>
#include <AIS_MapIteratorOfMapOfInteractive.hxx>
#include <AIS_BadEdgeFilter.hxx>
#include <AIS_DataMapOfIOStatus.hxx>
#include <AIS_AngleDimension.hxx>
#include <AIS_Chamf2dDimension.hxx>
#include <AIS_TexturedShape.hxx>
#include <AIS_OffsetDimension.hxx>
#include <AIS_SequenceOfInteractive.hxx>
#include <AIS_DisplayStatus.hxx>
#include <AIS_ExclusionFilter.hxx>
#include <AIS_Plane.hxx>
#include <AIS_ConnectedInteractive.hxx>
#include <AIS_StdMapNodeOfMapOfInteractive.hxx>
#include <AIS_Circle.hxx>
#include <AIS_DataMapNodeOfDataMapOfTransientTransient.hxx>
#include <AIS_EqualDistanceRelation.hxx>
#include <AIS_LengthDimension.hxx>
#include <AIS_Point.hxx>
#include <AIS_MultipleConnectedInteractive.hxx>
#include <AIS_GraphicTool.hxx>
#include <AIS_MidPointRelation.hxx>
#include <AIS_DisplayMode.hxx>
#include <AIS_AttributeFilter.hxx>
#include <AIS_KindOfUnit.hxx>
#include <AIS_DataMapIteratorOfDataMapOfILC.hxx>
#include <AIS_DataMapNodeOfDataMapOfSelStat.hxx>
#include <AIS_ListIteratorOfListOfInteractive.hxx>
#include <AIS_Trihedron.hxx>
#include <AIS_Line.hxx>
#include <AIS_Shape.hxx>
#include <AIS_TypeOfDist.hxx>
#include <AIS_Chamf3dDimension.hxx>
#include <AIS_TypeOfAxis.hxx>
#include <AIS_StatusOfPick.hxx>
#include <AIS_RadiusDimension.hxx>
#include <AIS_PlaneTrihedron.hxx>
#include <AIS_DataMapNodeOfDataMapOfILC.hxx>
#include <AIS_SequenceNodeOfSequenceOfDimension.hxx>
#include <AIS_DataMapNodeOfDataMapOfIOStatus.hxx>
#include <AIS_ConnectedShape.hxx>
#include <AIS_SelectStatus.hxx>
#include <AIS_MultipleConnectedShape.hxx>
#include <AIS_ParallelRelation.hxx>
#include <AIS_SignatureFilter.hxx>
#include <AIS_InteractiveContext.hxx>
#include <AIS_PerpendicularRelation.hxx>
#include <AIS_DataMapIteratorOfDataMapOfTransientTransient.hxx>
#include <Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs.hxx>
#include <Handle_AIS_PlaneTrihedron.hxx>
#include <Handle_AIS_MultipleConnectedShape.hxx>
#include <Handle_AIS_Plane.hxx>
#include <Handle_AIS_Relation.hxx>
#include <Handle_AIS_C0RegularityFilter.hxx>
#include <Handle_AIS_GlobalStatus.hxx>
#include <Handle_AIS_RadiusDimension.hxx>
#include <Handle_AIS_ConnectedShape.hxx>
#include <Handle_AIS_LengthDimension.hxx>
#include <Handle_AIS_ConnectedInteractive.hxx>
#include <Handle_AIS_DimensionOwner.hxx>
#include <Handle_AIS_StdMapNodeOfMapOfInteractive.hxx>
#include <Handle_AIS_DiameterDimension.hxx>
#include <Handle_AIS_SymmetricRelation.hxx>
#include <Handle_AIS_ConcentricRelation.hxx>
#include <Handle_AIS_BadEdgeFilter.hxx>
#include <Handle_AIS_AttributeFilter.hxx>
#include <Handle_AIS_EqualRadiusRelation.hxx>
#include <Handle_AIS_MaxRadiusDimension.hxx>
#include <Handle_AIS_IdenticRelation.hxx>
#include <Handle_AIS_InteractiveContext.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive.hxx>
#include <Handle_AIS_ExclusionFilter.hxx>
#include <Handle_AIS_Line.hxx>
#include <Handle_AIS_TexturedShape.hxx>
#include <Handle_AIS_EllipseRadiusDimension.hxx>
#include <Handle_AIS_AngleDimension.hxx>
#include <Handle_AIS_LocalStatus.hxx>
#include <Handle_AIS_EqualDistanceRelation.hxx>
#include <Handle_AIS_Point.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapOfSelStat.hxx>
#include <Handle_AIS_PerpendicularRelation.hxx>
#include <Handle_AIS_MinRadiusDimension.hxx>
#include <Handle_AIS_SequenceNodeOfSequenceOfInteractive.hxx>
#include <Handle_AIS_Selection.hxx>
#include <Handle_AIS_FixRelation.hxx>
#include <Handle_AIS_TypeFilter.hxx>
#include <Handle_AIS_OffsetDimension.hxx>
#include <Handle_AIS_ListNodeOfListOfInteractive.hxx>
#include <Handle_AIS_Circle.hxx>
#include <Handle_AIS_Axis.hxx>
#include <Handle_AIS_LocalContext.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapOfIOStatus.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapOfTransientTransient.hxx>
#include <Handle_AIS_SignatureFilter.hxx>
#include <Handle_AIS_TangentRelation.hxx>
#include <Handle_AIS_ParallelRelation.hxx>
#include <Handle_AIS_MultipleConnectedInteractive.hxx>
#include <Handle_AIS_SequenceNodeOfSequenceOfDimension.hxx>
#include <Handle_AIS_Shape.hxx>
#include <Handle_AIS_Chamf3dDimension.hxx>
#include <Handle_AIS_MidPointRelation.hxx>
#include <Handle_AIS_Chamf2dDimension.hxx>
#include <Handle_AIS_InteractiveObject.hxx>
#include <Handle_AIS_Drawer.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapOfILC.hxx>
#include <Handle_AIS_Trihedron.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Size.hxx>
#include <Standard_String.hxx>
#include <Standard_IStream.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_math.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_Character.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_Byte.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_Failure.hxx>
#include <Standard_Macro.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_Version.hxx>
#include <Standard_UUID.hxx>
#include <Standard_OId.hxx>
#include <Standard_GUID.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_Transient.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_SStream.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_ctype.hxx>
#include <Standard_OStream.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Stream.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_WayOfLife.hxx>
#include <Standard_Address.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_Static.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_CString.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_Type.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_Integer.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_Real.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_Underflow.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_NullValue.hxx>
%};

%import AIS.i
%import Standard.i
