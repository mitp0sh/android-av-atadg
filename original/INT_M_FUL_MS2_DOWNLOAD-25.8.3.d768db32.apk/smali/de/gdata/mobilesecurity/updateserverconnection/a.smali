.class Lde/gdata/mobilesecurity/updateserverconnection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/a;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/a;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->cancel(Z)Z

    .line 46
    return-void
.end method
