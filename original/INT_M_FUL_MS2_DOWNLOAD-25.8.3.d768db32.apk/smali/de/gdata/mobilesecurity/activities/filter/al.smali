.class Lde/gdata/mobilesecurity/activities/filter/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/al;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/al;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/al;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->onListClicked(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    .line 379
    return-void
.end method
