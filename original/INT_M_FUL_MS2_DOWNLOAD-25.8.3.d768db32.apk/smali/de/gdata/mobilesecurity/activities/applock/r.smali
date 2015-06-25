.class Lde/gdata/mobilesecurity/activities/applock/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/r;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/r;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->e(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V

    .line 326
    return-void
.end method
