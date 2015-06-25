.class final Lde/gdata/mobilesecurity/updateserverconnection/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/DialogFragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/i;->a:Landroid/support/v4/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/i;->a:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/i;->a:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 99
    :cond_0
    return-void
.end method
