.class Landroid/support/v7/app/e;
.super Landroid/support/v7/app/n;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/app/n;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 25
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/support/v7/app/f;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/e;Landroid/view/Window$Callback;)V

    return-object v0
.end method
