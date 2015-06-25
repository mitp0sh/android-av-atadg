.class public Lde/gdata/mobilesecurity/privacy/MmsContactTable$Columns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIRST_NAME:Ljava/lang/String; = "first_name"

.field public static final LAST_NAME:Ljava/lang/String; = "last_name"

.field public static final MIDDLE_NAME:Ljava/lang/String; = "middle_name"

.field public static final NAME_PREFIX:Ljava/lang/String; = "name_prefix"

.field public static final PROFILE_ID:Ljava/lang/String; = "profile_id"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final SOURCE_ID:Ljava/lang/String; = "source_id"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"
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
