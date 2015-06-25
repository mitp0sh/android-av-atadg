.class final Lde/gdata/mobilesecurity/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/EulaListener;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/EulaListener;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/f;->a:Lde/gdata/mobilesecurity/util/EulaListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/f;->a:Lde/gdata/mobilesecurity/util/EulaListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/f;->a:Lde/gdata/mobilesecurity/util/EulaListener;

    invoke-interface {v0}, Lde/gdata/mobilesecurity/util/EulaListener;->onRejected()V

    .line 1201
    :cond_0
    return-void
.end method
