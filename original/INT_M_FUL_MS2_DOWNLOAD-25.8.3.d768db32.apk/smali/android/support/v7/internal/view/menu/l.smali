.class Landroid/support/v7/internal/view/menu/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    .line 666
    return-void
.end method
