.class Lde/gdata/mobilesecurity/activities/applock/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/o;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->showDialog(I)V

    .line 240
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/p;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/applock/p;-><init>(Lde/gdata/mobilesecurity/activities/applock/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 278
    return-void
.end method
