# Maintainer: Aakash Hemadri <aakashhemadri123@gmail.com>
pkgname=xdm-hack
pkgver=0.1
pkgrel=1
pkgdesc="XDM setup that just works"
arch=(any)
license=('MIT')
url="https://github.com/aakashhemadri/xdm-hack"
depends=('xorg-xdm' 'bash'
	 'xorg-xmessage' 'xorg-xclock' 'xorg-xsetroot' 'xorg-xwininfo' 'xorg-xkill')
backup=(etc/X11/xdm/hack/Xsetup
	etc/X11/xdm/hack/Xresources)
install=xdm-hack.install
source=(xdm-config
	Xsetup
	Xstartup
	Xresources
	buttons
	hack.xpm
	xdm-hack.service)
package() {
  mkdir -p "$pkgdir"/etc/X11/xdm/hack
  cp hack.xpm buttons xdm-config Xresources Xsetup Xstartup "$pkgdir"/etc/X11/xdm/hack
  chmod 0755 "$pkgdir"/etc/X11/xdm/hack/{Xsetup,Xstartup,buttons}
  install -Dm0644 "$srcdir"/xdm-hack.service "$pkgdir"/usr/lib/systemd/system/xdm-hack.service
}
md5sums=('5e61f881eb3cbb091d163c0004cbcbd6'
         '7dc185dce376fba7cd06c12fae458a4e'
         '3145bd39757db8332678cf35695eeb6b'
         '5ccfb9a9464f80be3391a3d6f6e6d93d'
         'fa4e556765899e240d5714625b487503'
         '497cf24c68363ee083f846946f7a4c1b'
         '5955c80a6b933ccf1f9dd64f56d8854e')
