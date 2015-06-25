.class final Lde/gdata/mobilesecurity/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/EulaListener;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/EulaListener;)V
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/g;->a:Lde/gdata/mobilesecurity/util/EulaListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1237
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1238
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/g;->a:Lde/gdata/mobilesecurity/util/EulaListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/util/g;->a:Lde/gdata/mobilesecurity/util/EulaListener;

    invoke-interface {v0}, Lde/gdata/mobilesecurity/util/EulaListener;->onAccepted()V

    .line 1239
    :cond_0
    return-void
.end method
