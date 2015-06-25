.class Lde/gdata/mobilesecurity/activities/filter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/f;->a:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    return-void
.end method
