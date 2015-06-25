.class Lde/gdata/mobilesecurity/activities/kidsguard/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/av;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1181
    if-eqz p1, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/av;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a:Landroid/support/v7/view/ActionMode;

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/av;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Landroid/content/Intent;)V

    .line 1184
    :cond_0
    return-void
.end method
