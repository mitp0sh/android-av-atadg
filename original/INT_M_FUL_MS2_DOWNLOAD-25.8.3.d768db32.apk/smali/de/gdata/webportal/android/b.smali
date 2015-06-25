.class Lde/gdata/webportal/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/webportal/android/RegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/webportal/android/RegisterFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lde/gdata/webportal/android/b;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/b;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-virtual {v1}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 142
    sget-boolean v1, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/webportal/android/b;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-virtual {v1}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 144
    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 145
    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 147
    iget-object v0, p0, Lde/gdata/webportal/android/b;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-virtual {v0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lde/gdata/webportal/android/b;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-static {v0}, Lde/gdata/webportal/android/RegisterFragment;->b(Lde/gdata/webportal/android/RegisterFragment;)V

    goto :goto_0
.end method
