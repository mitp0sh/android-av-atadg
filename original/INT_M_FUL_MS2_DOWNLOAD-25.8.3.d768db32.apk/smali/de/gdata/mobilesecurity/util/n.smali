.class Lde/gdata/mobilesecurity/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivity;

.field final synthetic b:Lde/gdata/mobilesecurity/util/OemOrange;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/OemOrange;Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/n;->b:Lde/gdata/mobilesecurity/util/OemOrange;

    iput-object p2, p0, Lde/gdata/mobilesecurity/util/n;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/n;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 162
    return-void
.end method
