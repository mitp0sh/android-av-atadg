.class Landroid/support/v7/internal/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/a;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/a;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/support/v7/internal/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/support/v7/internal/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/a;->showOverflowMenu()Z

    .line 153
    return-void
.end method
