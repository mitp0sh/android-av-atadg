.class public Lde/gdata/mobilesecurity/privacy/MmsAddressTable$Columns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final MMS_CONTACT:Ljava/lang/String; = "mms_contact_id"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        defaults = "unique"
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final NEIGHBOURHOOD:Ljava/lang/String; = "neighbourhood"

.field public static final POSTCODE:Ljava/lang/String; = "postcode"

.field public static final PO_BOX:Ljava/lang/String; = "po_box"

.field public static final STREET:Ljava/lang/String; = "street"

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
