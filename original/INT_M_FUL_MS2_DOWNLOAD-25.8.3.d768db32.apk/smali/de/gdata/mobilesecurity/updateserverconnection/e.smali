.class final Lde/gdata/mobilesecurity/updateserverconnection/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-static {v0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(Z)Z

    .line 315
    return-void
.end method
