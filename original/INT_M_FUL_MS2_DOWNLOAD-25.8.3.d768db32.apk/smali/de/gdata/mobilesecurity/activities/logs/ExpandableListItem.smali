.class public Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/activities/logs/OnSizeChangedListener;


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->b:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->a:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->c:I

    .line 34
    return-void
.end method


# virtual methods
.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->b:I

    return v0
.end method

.method public getExpandedHeight()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->c:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->a:Z

    return v0
.end method

.method public onSizeChanged(I)V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->setExpandedHeight(I)V

    .line 63
    return-void
.end method

.method public setCollapsedHeight(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->b:I

    .line 50
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->a:Z

    .line 42
    return-void
.end method

.method public setExpandedHeight(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->c:I

    .line 58
    return-void
.end method
