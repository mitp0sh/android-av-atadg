.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FAX_PRIVATE:Ljava/lang/Integer;

.field public static final FAX_WORK:Ljava/lang/Integer;

.field public static final MAIL_PRIVATE:Ljava/lang/Integer;

.field public static final MAIL_WORK:Ljava/lang/Integer;

.field public static final MOBILE:Ljava/lang/Integer;

.field public static final NONE:Ljava/lang/Integer;

.field public static final PHONE_PRIVATE:Ljava/lang/Integer;

.field public static final PHONE_WORK:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->NONE:Ljava/lang/Integer;

    .line 6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->MOBILE:Ljava/lang/Integer;

    .line 7
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->PHONE_PRIVATE:Ljava/lang/Integer;

    .line 8
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->PHONE_WORK:Ljava/lang/Integer;

    .line 9
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->FAX_PRIVATE:Ljava/lang/Integer;

    .line 10
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->FAX_WORK:Ljava/lang/Integer;

    .line 11
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->MAIL_PRIVATE:Ljava/lang/Integer;

    .line 12
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/item/Communication$Types;->MAIL_WORK:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
