
include $(TOPDIR)/rules.mk

PKG_NAME:=nhxweb
PKG_VERSION:=1.1
PKG_RELEASE:=20200623

include $(INCLUDE_DIR)/package.mk

define Package/nhxweb
  SECTION:=NHX
  CATEGORY:=NHX
  TITLE:=nhx mesh web
  PKGARCH:=all
  SUBMENU:=web
  DEPENDS:=+nhxapi +nhxcgi
endef

define Package/nhxweb/description
nhx web html.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/nhxweb/install
	$(INSTALL_DIR) $(1)/www
	$(CP) ./files/* $(1)/www
endef

$(eval $(call BuildPackage,nhxweb))

