.class Lde/gdata/mobilesecurity/activities/kidsguard/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;I)Landroid/app/Dialog;

    .line 313
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ak;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/aj;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 352
    return-void
.end method
