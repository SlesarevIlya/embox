# Generated by Xpand using M2Make template.

# Model of 'myFile' package.

ifndef __mybuild_myfile_model_mk
__mybuild_myfile_model_mk := $(lastword $(MAKEFILE_LIST))


#
# Model object 'Package'.
#
# The following features are available:
#   - reference 'imports'
#   - reference 'entities'
#
# To instantiate this class use 'MyFileFactory.createPackage'.
define class-MyPackage
	$(super ENode)
	$(super MyNamed)

	# 'imports' containment reference.
	$(property imports... : Import)

	# 'entities' bidirectional containment reference.
	# The opposite reference is 'Entity.package'.
	$(property entities... : Entity)

endef

#
# Model object 'Import'.
#
# The following features are available:
#   - attribute 'importName'
#
# To instantiate this class use 'MyFileFactory.createImport'.
define class-MyImport
	$(super ENode)

	# 'importName' attribute.
	$(property importName)

endef

#
# Model object 'Entity'.
#
# The following features are available:
#   - reference 'package'
#
# This is an abstract class. You can't instantiate it directly.
define class-MyEntity
	$(super ENode)
	$(super MyNamed)

	# 'package' bidirectional container reference.
	# The opposite reference is 'Package.entities'.
	$(property package : Package)

endef

#
# Model object 'Interface'.
#
# The following features are available:
#   - reference 'features'
#
# To instantiate this class use 'MyFileFactory.createInterface'.
define class-MyInterface
	$(super ENode)
	$(super MyEntity)
	$(super MyExtendable)

	# 'features' bidirectional containment reference.
	# The opposite reference is 'Feature.interface'.
	$(property features... : Feature)

endef

#
# Model object 'Feature'.
#
# The following features are available:
#   - reference 'interface'
#   - reference 'providedBy'
#   - reference 'requiredBy'
#
# To instantiate this class use 'MyFileFactory.createFeature'.
define class-MyFeature
	$(super ENode)
	$(super MyNamed)
	$(super MyExtendable)

	# 'interface' bidirectional container reference.
	# The opposite reference is 'Interface.features'.
	$(property interface : Interface)

	# 'providedBy' bidirectional reference.
	# The opposite reference is 'Module.provides'.
	$(property providedBy... : Module)
	$(property providedBy_links... : ELink)

	# 'requiredBy' bidirectional reference.
	# The opposite reference is 'Module.requires'.
	$(property requiredBy... : Module)
	$(property requiredBy_links... : ELink)

endef

#
# Model object 'Module'.
#
# The following features are available:
#   - attribute 'static'
#   - attribute 'abstract'
#   - reference 'depends'
#   - reference 'dependent'
#   - reference 'provides'
#   - reference 'requires'
#
# To instantiate this class use 'MyFileFactory.createModule'.
define class-MyModule
	$(super ENode)
	$(super MyEntity)
	$(super MyExtendable)

	# 'static' attribute.
	$(property isStatic)

	# 'abstract' attribute.
	$(property isAbstract)

	# 'depends' bidirectional reference.
	# The opposite reference is 'dependent'.
	$(property depends... : Module)
	$(property depends_links... : ELink)

	# 'dependent' bidirectional reference.
	# The opposite reference is 'depends'.
	$(property dependent... : Module)
	$(property dependent_links... : ELink)

	# 'provides' bidirectional reference.
	# The opposite reference is 'Feature.providedBy'.
	$(property provides... : Feature)
	$(property provides_links... : ELink)

	# 'requires' bidirectional reference.
	# The opposite reference is 'Feature.requiredBy'.
	$(property requires... : Feature)
	$(property requires_links... : ELink)

endef

#
# Model object 'Named'.
#
# The following features are available:
#   - attribute 'name'
#
# This is an abstract class. You can't instantiate it directly.
define class-MyNamed
	$(super ENode)

	# 'name' attribute.
	$(property name)

endef

#
# Model object 'Extendable'.
#
# The following features are available:
#   - reference 'subTypes'
#   - reference 'superType'
#   - reference 'allSubTypes'
#   - reference 'allSuperTypes'
#
# This is an abstract class. You can't instantiate it directly.
define class-MyExtendable
	$(super ENode)

	# 'subTypes' bidirectional reference.
	# The opposite reference is 'superType'.
	$(property subTypes... : Extendable)
	$(property subTypes_links... : ELink)

	# 'superType' bidirectional reference.
	# The opposite reference is 'subTypes'.
	$(property superType : Extendable)
	$(property superType_link : ELink)

	# 'allSubTypes' bidirectional reference.
	# The opposite reference is 'allSuperTypes'.
	$(property allSubTypes... : Extendable)# read-only.
	$(property allSubTypes_links... : ELink)# read-only.

	# 'allSuperTypes' bidirectional reference.
	# The opposite reference is 'allSubTypes'.
	$(property allSuperTypes... : Extendable)# read-only.
	$(property allSuperTypes_links... : ELink)# read-only.

	# 'isSubTypeOf' operation.
	#   1. another : Extendable
	$(method isSubTypeOf)

	# 'isSuperTypeOf' operation.
	#   1. another : Extendable
	$(method isSuperTypeOf)

endef

#
# Model object 'Filename'.
#
# To instantiate this class use 'MyFileFactory.createFilename'.
define class-MyFilename
	$(super ENode)

endef

$(def_all)

include $(dir $(__mybuild_myfile_model_mk))myfile-model_impl.mk

endif # __mybuild_myfile_model_mk

