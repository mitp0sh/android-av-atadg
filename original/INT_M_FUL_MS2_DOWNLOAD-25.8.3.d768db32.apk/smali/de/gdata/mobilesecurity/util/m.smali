.class Lde/gdata/mobilesecurity/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivity;

.field final synthetic b:Lde/gdata/mobilesecurity/util/OemOrange;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/OemOrange;Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/m;->b:Lde/gdata/mobilesecurity/util/OemOrange;

    iput-object p2, p0, Lde/gdata/mobilesecurity/util/m;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/m;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 156
    return-void
.end method
