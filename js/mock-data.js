// Mock Data cho testing

const mockData = {
    user: {
        name: "Nguyễn Văn A",
        taxCode: "0123456789",
        phone: "0912345678"
    },
    
    invoices: [
        {
            id: 1,
            number: "AA/23E0001",
            date: "2024-01-15",
            company: "Công ty ABC",
            amount: 1500000,
            status: "valid"
        },
        {
            id: 2,
            number: "BB/23E0002",
            date: "2024-01-20",
            company: "Công ty XYZ",
            amount: 2300000,
            status: "valid"
        }
    ],
    
    notifications: [
        {
            id: 1,
            title: "Thông báo thuế mới",
            content: "Có 1 hóa đơn mới cần xác nhận",
            date: "2024-01-25",
            isRead: false
        }
    ]
};

// Export for use in pages
window.mockData = mockData;
