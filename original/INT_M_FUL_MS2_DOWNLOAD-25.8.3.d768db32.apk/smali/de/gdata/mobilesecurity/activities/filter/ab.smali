.class Lde/gdata/mobilesecurity/activities/filter/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ab;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ab;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ab;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;

    .line 534
    return-void
.end method
