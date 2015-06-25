.class public Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTEXT_DEVICE_POLICY_SERVICE:Ljava/lang/String; = "device_policy"

.field public static final DEVICE_ADMIN_REQUEST_CODE:I

.field public static final EXISTS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 25
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const/4 v0, 0x0

    .line 28
    sget-boolean v2, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v2, :cond_0

    .line 29
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    .line 34
    :cond_0
    return v0
.end method

.method public static removeActiveAdmin(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 100
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 107
    :cond_0
    return-void
.end method

.method public static requestToAdd(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f0d0216

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;II)V

    .line 42
    return-void
.end method

.method public static requestToAdd(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;II)V

    .line 49
    return-void
.end method

.method public static requestToAdd(Landroid/app/Activity;II)V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v3, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    const-string v1, "android.app.extra.ADD_EXPLANATION"

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    return-void
.end method

.method public static requestToAdd(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f0d0216

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/support/v4/app/Fragment;II)V

    .line 71
    return-void
.end method

.method public static requestToAdd(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/support/v4/app/Fragment;II)V

    .line 78
    return-void
.end method

.method public static requestToAdd(Landroid/support/v4/app/Fragment;II)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lde/gdata/mobilesecurity/receiver/DevAdminReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v3, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    const-string v1, "android.app.extra.ADD_EXPLANATION"

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v2, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    return-void
.end method
