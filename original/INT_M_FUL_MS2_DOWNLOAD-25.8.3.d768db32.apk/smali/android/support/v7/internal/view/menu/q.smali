.class Landroid/support/v7/internal/view/menu/q;
.super Landroid/support/v7/internal/view/menu/j;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/view/menu/j",
        "<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    .line 365
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/j;-><init>(Ljava/lang/Object;)V

    .line 366
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->a(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
