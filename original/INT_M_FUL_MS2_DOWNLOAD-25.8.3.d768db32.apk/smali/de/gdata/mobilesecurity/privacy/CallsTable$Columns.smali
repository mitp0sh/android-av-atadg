.class public Lde/gdata/mobilesecurity/privacy/CallsTable$Columns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final DATE:Ljava/lang/String; = "date"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final DURATION:Ljava/lang/String; = "duration"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final NEW:Ljava/lang/String; = "new"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
