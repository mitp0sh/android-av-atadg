.class Lde/gdata/mobilesecurity/activities/kidsguard/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ar;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 767
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 768
    const-string v1, "DIALOG_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 769
    const-string v1, "DIALOG_MESSAGE"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ar;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    const v3, 0x7f0d0142

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ar;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->newInstance(Landroid/os/Bundle;)Lde/gdata/mobilesecurity/util/GdDialogFragment;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Lde/gdata/mobilesecurity/util/GdDialogFragment;)Lde/gdata/mobilesecurity/util/GdDialogFragment;

    .line 772
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ar;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->e(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Lde/gdata/mobilesecurity/util/GdDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ar;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/GdDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 775
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/as;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/as;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/ar;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/as;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 815
    return-void
.end method
