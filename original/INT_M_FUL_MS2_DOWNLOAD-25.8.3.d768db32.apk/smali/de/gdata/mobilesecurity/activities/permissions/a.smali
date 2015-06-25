.class Lde/gdata/mobilesecurity/activities/permissions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/permissions/a;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/a;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/a;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/a;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/a;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/a;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    const/16 v2, 0x29b

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    :cond_1
    return-void
.end method
