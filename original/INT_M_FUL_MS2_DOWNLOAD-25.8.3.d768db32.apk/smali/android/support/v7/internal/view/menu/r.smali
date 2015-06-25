.class Landroid/support/v7/internal/view/menu/r;
.super Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;Z)V

    .line 27
    return-void
.end method


# virtual methods
.method a(Landroid/support/v4/view/ActionProvider;)Landroid/support/v7/internal/view/menu/m;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/support/v7/internal/view/menu/s;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/support/v7/internal/view/menu/r;Landroid/support/v4/view/ActionProvider;)V

    return-object v0
.end method
