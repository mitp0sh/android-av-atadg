.class Lde/gdata/mobilesecurity/intents/ab;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6

    .prologue
    .line 1031
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ab;->a:Lde/gdata/mobilesecurity/intents/Main;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ab;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->supportInvalidateOptionsMenu()V

    .line 1035
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ab;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->supportInvalidateOptionsMenu()V

    .line 1040
    return-void
.end method
