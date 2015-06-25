.class Landroid/support/v7/app/j;
.super Landroid/support/v7/app/g;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/support/v7/app/j;->m()V

    .line 28
    new-instance v0, Landroid/support/v7/app/p;

    iget-object v1, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/p;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    return-object v0
.end method
