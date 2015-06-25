.class Lde/gdata/mobilesecurity/activities/filter/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field final synthetic b:I

.field final synthetic c:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;I)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ac;->c:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/ac;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iput p3, p0, Lde/gdata/mobilesecurity/activities/filter/ac;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ac;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/filter/ac;->b:I

    invoke-virtual {v0, v1, p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->changeSchedulePosition(IZ)V

    .line 596
    return-void
.end method
